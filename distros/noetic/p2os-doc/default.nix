
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-p2os-doc";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/noetic/p2os_doc/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "af16e91552f917df1f6d9aeb4f37f718f3e2129f7c046564533829e7e85ea601";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the Documentation for the p2os driver/componenets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
