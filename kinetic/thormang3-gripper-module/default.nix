
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, boost, std-msgs, cmake-modules, roslib, catkin, libyamlcpp, eigen, robotis-framework-common, roscpp, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-gripper-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_gripper_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "03d52259ce1ded160ac58572e53ba173e47a648cc89c9b93dcc08c72a5704630";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs std-msgs cmake-modules roslib libyamlcpp eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost std-msgs cmake-modules roslib libyamlcpp eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_gripper_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
