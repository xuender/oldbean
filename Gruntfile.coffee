module.exports = (grunt)->
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-ftp-deploy'

  grunt.initConfig(
    pkg:
      grunt.file.readJSON('package.json')
    clean:
      public: ['public']
    shell:
      generate:
        command: 'hexo generate'
    'ftp-deploy':
      dev:
        auth:
          host: '223.7.78.154'
          port: 21
          authKey: 'oldbean'
        src: 'public'
        dest: 'htdocs'
  )
  grunt.registerTask 'default', '默认(打包)', [
    'clean'
    'shell:generate'
    'ftp-deploy'
  ]
