
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers-cartesian";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/ros_controllers_cartesian/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "aed8fd120127c93460f448cf0083ae790c0354b182339138ab916d59d6f1e90f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''scaled controllers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
