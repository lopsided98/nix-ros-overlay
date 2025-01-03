
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-mecanum-controller";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_mecanum_controller/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "7da7bbb89e13aa946e3302850cac2ddc8252254b515f0640533f0b57d1672ab2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen geometry-msgs nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_mecanum_controller_node provides a lightweight base controller for mecanum drive robots. 
    The out/input for the wheel command/state are wheel velocities in rad/s for the wheels 
    [front left, front right, rear left, rear right]";
    license = with lib.licenses; [ asl20 ];
  };
}
