
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-self-test";
  version = "1.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/self_test/1.10.4-1.tar.gz";
    name = "1.10.4-1.tar.gz";
    sha256 = "0ed086d82821fa5ddc9952912b16e46c22871eb49ebde993fde9132cb3110d38";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
