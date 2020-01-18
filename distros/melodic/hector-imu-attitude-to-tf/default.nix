
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-imu-attitude-to-tf";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_imu_attitude_to_tf/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "16d5505067c30a8e510904884e6d3b677faf0ed8b44fd3c3ac14c35261ff81b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_attitude_to_tf is a lightweight node that can be used to publish the roll/pitch attitude angles reported via a imu message to tf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
