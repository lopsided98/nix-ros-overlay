
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-tutorials, rocon-gateway-utils, catkin, gateway-msgs, rocon-gateway, rocon-console, rocon-hub, rocon-test, rospy, zeroconf-avahi, rosunit, actionlib-tutorials, rospy-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-rocon-gateway-tests";
  version = "0.8.1-r2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway_tests/0.8.1-2.tar.gz;
    sha256 = "e17b06ec913198b9b3f81603f8e74c211040f00ea7cb6a78d4ac87f0b342acd5";
  };

  buildInputs = [ rocon-test ];
  checkInputs = [ roscpp-tutorials rocon-gateway-utils gateway-msgs rospy rocon-console rocon-hub rocon-gateway zeroconf-avahi rosunit actionlib-tutorials rospy-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Testing programs for gateways.'';
    #license = lib.licenses.BSD;
  };
}
