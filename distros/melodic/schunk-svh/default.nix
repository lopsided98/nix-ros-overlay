
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description, schunk-svh-driver, schunk-svh-msgs }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "1f48270d59bcfefbbc65d3d51a766c744e322a93ef4a03086cebb7966518837d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-svh-description schunk-svh-driver schunk-svh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 specific packages for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
