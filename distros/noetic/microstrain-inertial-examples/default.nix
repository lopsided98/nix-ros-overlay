
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, microstrain-inertial-msgs, roscpp, roslint, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "0d0c287141e3f490217c16407a66b23e16fe62ac23cfbfea5f9a170b4477d778";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ cmake-modules microstrain-inertial-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
