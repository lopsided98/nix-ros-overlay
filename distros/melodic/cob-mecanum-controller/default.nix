
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-mecanum-controller";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_mecanum_controller/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "ab44a926e2dcda6cd6f79a0748a1954ced404f32c83a170f64e42a8e4888aaf5";
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
