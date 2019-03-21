
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ecl-command-line";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_command_line/0.61.17-0.tar.gz;
    sha256 = "8e4ad3a4d858473e87d02d2fb7cb59695617526e52b41c951b2e625af7dbafc4";
  };

  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ecl-license catkin ];

  meta = {
    description = ''Embeds the TCLAP library inside the ecl. This is a very convenient
     command line parser in templatised c++.'';
    #license = lib.licenses.BSD;
  };
}
