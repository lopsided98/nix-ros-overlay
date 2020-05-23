
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-self-test";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/self_test/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "9529c05ed3e8a9f4bc21357257af7bca5296cb697a03a1b3b1267e58793df63c";
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
