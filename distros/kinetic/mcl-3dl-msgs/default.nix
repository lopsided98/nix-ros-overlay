
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mcl-3dl-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/kinetic/mcl_3dl_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d6a213691f7fa4a1723ae1780d481d6fff067769d8765ffc145fbc903c07cec8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
