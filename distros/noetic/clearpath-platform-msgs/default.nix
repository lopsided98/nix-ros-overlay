
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-platform-msgs";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_platform_msgs/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "0cc273d4fc4a401fcfecd4c032e82c78a3ee583fb6359da4de1bc3cee3ef5c04";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ genmsg std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
