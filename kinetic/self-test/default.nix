
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, rostest, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-self-test";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/self_test/1.9.3-0.tar.gz;
    sha256 = "58930fe58abcfafe1db6819f55d4ed483d92d7f28feb545f66cae80fb85b0d69";
  };

  buildInputs = [ diagnostic-msgs rostest roscpp diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-msgs roscpp diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
