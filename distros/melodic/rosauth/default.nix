
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, openssl, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosauth";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rosauth-release/archive/release/melodic/rosauth/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "0ca3669ec558cc5222bad792320e30bb7e7d0321282b1abe49a0ff9b68fb5986";
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
