
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, microstrain-inertial-msgs, roscpp, roslint, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-microstrain-inertial-examples";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/melodic/microstrain_inertial_examples/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9b802c25cfda1b74cd821c0d63af22ecec7097ad7c59a67a38201bba75bab8d6";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ cmake-modules microstrain-inertial-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
