
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost, pkg-config, rosbash }:
buildRosPackage {
  pname = "ros-kinetic-tracetools";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/bosch-robotics-cr/tracetools-release/archive/release/kinetic/tracetools/0.2.1-0.tar.gz;
    sha256 = "59ed304f0ac9078e5b0875444b5594170921f29d35ba304a7f60f17eadd54f57";
  };

  buildInputs = [ boost ];
  checkInputs = [ rosbash ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Wrapper interface for tracing libraries'';
    license = with lib.licenses; [ "APLv2" ];
  };
}
