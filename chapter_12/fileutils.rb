# 12.5.1

require 'fileutils'

# cp
FileUtils.cp("baker.rb", "baker.rb.bak")
FileUtils.mkdir("backup")
FileUtils.cp(["ensure.rb", "super.rb"], "backup")

p Dir["backup/*"] # ["backup/ensure.rb", "backup/super.rb"]

# mv
FileUtils.mv("backer.rb.bak", "backup")
p Dir["backup/*"] # ["backup/ensure.rb", "backup/super.rb, "backup/back.rb.bak"]

# rm
File.exist?("backup/super.rb") # true
FileUtils.rm("./backup/super.rb")
File.exist?("backup/super.rb") # false

# rm_rf
FileUtils.rm_rf("backup")
File.exist?("backup") # false

# DryRun
FileUtils::DryRun.rm_rf("backup")
# rm -rf backup

FileUtils::DryRun.ln_s("backup", "backup_link")
# ln -s backup backup_link

# NoWrite
FileUtils::NoWrite.rm("backup/super.rb")
File.exist?("backup/super.rb") # true