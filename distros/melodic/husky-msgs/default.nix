
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-husky-msgs";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_msgs/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "54242466b9d297d728b21ace8770719e5043e4895f63a54d73c1eef1c328bfdd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
