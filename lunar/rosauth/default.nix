
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, openssl, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosauth";
  version = "0.1.7-r2";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rosauth-release/archive/release/lunar/rosauth/0.1.7-2.tar.gz;
    sha256 = "0c2006073c736b085a2e083c9ce1112c36b7f9dc07a684c3fa6beba028d09422";
  };

  buildInputs = [ openssl rostest message-generation roscpp ];
  propagatedBuildInputs = [ roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    #license = lib.licenses.BSD;
  };
}
