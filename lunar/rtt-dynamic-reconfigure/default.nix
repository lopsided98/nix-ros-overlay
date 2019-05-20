
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-dynamic-reconfigure";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_dynamic_reconfigure/2.9.2-1.tar.gz;
    sha256 = "3f6fe14f9c1b3a605319698cab35ecf8e65a27143cb040c779ac23c60ba54eab";
  };

  buildInputs = [ roscpp rtt-ros dynamic-reconfigure ];
  propagatedBuildInputs = [ rtt-rosnode roscpp rtt-ros dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_dynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
