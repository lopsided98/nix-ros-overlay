
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-imu-attitude-to-tf";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_imu_attitude_to_tf/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ef7b01ee4e41b8929813fb34fe31b543b82205194e3b96ec9adc3e382a5ae0fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_attitude_to_tf is a lightweight node that can be used to publish the roll/pitch attitude angles reported via a imu message to tf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
