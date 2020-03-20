
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-mecanum-controller";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_mecanum_controller/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "3f6a5f1b54674464e3a00a22b0437cf057bb3a5c19747de6fee6069e28494b27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_mecanum_controller_node provides a lightweight base controller for mecanum drive robots. 
    The out/input for the wheel command/state are wheel velocities in rad/s for the wheels 
    [front left, front right, rear left, rear right]'';
    license = with lib.licenses; [ asl20 ];
  };
}
