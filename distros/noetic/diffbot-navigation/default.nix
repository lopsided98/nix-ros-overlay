
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, diffbot-bringup, dwa-local-planner, map-server, move-base }:
buildRosPackage {
  pname = "ros-noetic-diffbot-navigation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_navigation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "0c54acf1c3175299b7cc671a559f681e8a7d623685451a5d38b3bf2e47262706";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl base-local-planner diffbot-bringup dwa-local-planner map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_navigation package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
