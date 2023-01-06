
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-base-velocity-smoother";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_base_velocity_smoother/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "45e76c5e637ec93e27f71b70f4173af6ce896a4918156b900e552e7657b66d7d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost dynamic-reconfigure geometry-msgs nav-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    license = with lib.licenses; [ asl20 ];
  };
}
