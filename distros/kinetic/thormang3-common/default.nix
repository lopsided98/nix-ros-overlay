
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-description, thormang3-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-common";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Common-release/archive/release/kinetic/thormang3_common/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "b20d0afc9e7aa7f323ed9c51eb3e1efc6a49fbb221962217cbdb4f10a61b7b2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-description thormang3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_common (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
