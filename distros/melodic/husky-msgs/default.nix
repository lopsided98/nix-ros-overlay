
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-husky-msgs";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_msgs/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "a879789fb44a9396d3aa2dad8b432358fc7edaea6db698b94d2b0beca023de20";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
