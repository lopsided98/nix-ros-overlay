
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-ddynamic-reconfigure-python";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/pal-gbp/ddynamic_reconfigure_python-release/archive/release/lunar/ddynamic_reconfigure_python/0.0.1-0.tar.gz;
    sha256 = "647bd72098f317e6314c32dfe0eea23ef0b7799a904d263f08ecc43ab7422f41";
  };

  buildInputs = [ rospy dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure_python package contains
    a class to instantiate dynamic reconfigure servers on the fly
    registering variables'';
    #license = lib.licenses.BSD;
  };
}
