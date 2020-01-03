
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-velocity-smoother";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_velocity_smoother/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "cb55db97d0567a914ec958973ccf947b48914672d143803b8cb7c755f024b9f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost dynamic-reconfigure geometry-msgs nav-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    license = with lib.licenses; [ asl20 ];
  };
}
