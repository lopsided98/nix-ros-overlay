
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-base-velocity-smoother";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_base_velocity_smoother/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "16ff0313294d31701994ca16b0b43972dbc5462ff00894ed6e9e8953fecb3b02";
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
