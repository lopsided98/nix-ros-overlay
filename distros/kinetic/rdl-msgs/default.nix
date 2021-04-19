
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rdl-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_msgs/1.1.0-0/rdl_release-release-kinetic-rdl_msgs-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_msgs-1.1.0-0.tar.gz";
    sha256 = "055beffc8f5d462e86684e672b4fa5d81972d548d62ce6ec2c9f3ac315828cc5";
  };

  buildType = "catkin";
  buildInputs = [ rdl-cmake ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom msgs for rdl types'';
    license = with lib.licenses; [ "zlib" ];
  };
}
