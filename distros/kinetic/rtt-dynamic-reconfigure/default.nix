
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, roscpp, rtt-ros, rtt-rosnode }:
buildRosPackage {
  pname = "ros-kinetic-rtt-dynamic-reconfigure";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_dynamic_reconfigure/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "9ad2bfb70fca3383ccd6204b2336857fb254337d6a758b46e40bdb6a1825a6c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure roscpp rtt-ros rtt-rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_dynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
