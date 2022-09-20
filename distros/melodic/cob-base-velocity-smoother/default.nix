
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-velocity-smoother";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_velocity_smoother/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "13be84692b2b926f21237c439e0ed560779daa14bd6d239b3e9ea681b1873b27";
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
