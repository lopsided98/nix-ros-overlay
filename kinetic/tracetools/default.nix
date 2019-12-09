
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, pkg-config, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-tracetools";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/bosch-robotics-cr/tracetools-release/archive/release/kinetic/tracetools/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "0c51e131b0461a9aeb8822e368147433d331bbf9c972062f775d9f4e73a0636e";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ rosbash ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''Wrapper interface for tracing libraries'';
    license = with lib.licenses; [ "APLv2" ];
  };
}
