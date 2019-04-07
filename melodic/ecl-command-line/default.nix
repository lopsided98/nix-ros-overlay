
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-command-line";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_command_line/0.62.2-0.tar.gz;
    sha256 = "db3031f9d20cc04364f267a0cc028ea9b86730a1679d5ff6fc7023409ebde7b7";
  };

  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Embeds the TCLAP library inside the ecl. This is a very convenient
     command line parser in templatised c++.'';
    #license = lib.licenses.BSD;
  };
}
