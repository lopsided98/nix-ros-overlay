
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, python3Packages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-handeye";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/noetic/handeye/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "aea294493fd622b577da646e8dbfc3ff835cf47d2e086f20d51eb4bf85cae4a1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime python3Packages.matplotlib python3Packages.numpy python3Packages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
