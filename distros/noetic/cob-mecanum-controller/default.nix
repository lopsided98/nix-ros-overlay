
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-mecanum-controller";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_mecanum_controller/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "63d2edacbbd8a3553508dfd7ba8ac3b8e4538dde97efd62bf6afb6a0b57399b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen geometry-msgs nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_mecanum_controller_node provides a lightweight base controller for mecanum drive robots. 
    The out/input for the wheel command/state are wheel velocities in rad/s for the wheels 
    [front left, front right, rear left, rear right]'';
    license = with lib.licenses; [ asl20 ];
  };
}
