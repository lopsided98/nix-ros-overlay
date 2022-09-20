
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, radial-menu-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-model";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_model/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "7dc9b116058f1be47bec8b9c15beeb055e8ac3fb0e932844f6c968b4d13f1af0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ radial-menu-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_model package'';
    license = with lib.licenses; [ mit ];
  };
}
