
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-melodic-ecl-config";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_config/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "a8fb8da4c0d398f4f209b8a0f35c738ee3aaca992c8bd3c5d541f60637b83063";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types 
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
