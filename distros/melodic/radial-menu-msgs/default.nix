
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "b131109e301f64e71373f7109ac28a6c5be97c7c5d42bd0f17df2f96cc3996ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
