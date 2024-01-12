
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, openssl, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-rosauth";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rosauth-release/archive/release/noetic/rosauth/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f00e6e72af902207c80739d19befdd64aa11cfc6256e284507837d11e1c2ba1d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
