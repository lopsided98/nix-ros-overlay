
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers-cartesian";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/ros_controllers_cartesian/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "5ded3fcc388472e298f2112c0e38d7ae587bd631f78e2c8c3bb2b84eaa32e2d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Cartesian ROS controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
