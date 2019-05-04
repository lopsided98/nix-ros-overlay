
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-husky-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_msgs/0.3.3-0.tar.gz;
    sha256 = "7fc8604fb8e9f747f849d48e7c9defde58f05c1e693d3bbb24c23bcbabd4bec8";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
