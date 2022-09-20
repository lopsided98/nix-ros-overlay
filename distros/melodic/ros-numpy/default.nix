
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-ros-numpy";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/eric-wieser/ros_numpy-release/archive/release/melodic/ros_numpy/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "2db40c8a7b9a22d6549cddf49c74ab88285ea20b1c9afecbad3e3f2d53a8b451";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.numpy rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
