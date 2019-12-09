
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, geometry-msgs, dynamic-reconfigure, std-msgs, catkin, roslint, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-velocity-smoother";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_velocity_smoother/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "4feaadef5cd6375527ff72d0b69cdb721c6fd66185f0d518bac51c03f3735639";
  };

  buildType = "catkin";
  buildInputs = [ boost geometry-msgs dynamic-reconfigure std-msgs roslint roscpp nav-msgs ];
  propagatedBuildInputs = [ boost geometry-msgs dynamic-reconfigure std-msgs roslint roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    license = with lib.licenses; [ asl20 ];
  };
}
