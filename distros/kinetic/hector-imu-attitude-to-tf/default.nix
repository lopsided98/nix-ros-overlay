
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-imu-attitude-to-tf";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_imu_attitude_to_tf/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "8e463d6db92e2729909345d6a45f2607d455fe0e45f02108a64eb77776c1c9be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_attitude_to_tf is a lightweight node that can be used to publish the roll/pitch attitude angles reported via a imu message to tf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
