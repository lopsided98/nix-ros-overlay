
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-velocity-smoother";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_velocity_smoother/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "058270c567a8e9693550092338d9ab73b63b333376c2238c0973b49372c6e9bf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost dynamic-reconfigure geometry-msgs nav-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    license = with lib.licenses; [ asl20 ];
  };
}
