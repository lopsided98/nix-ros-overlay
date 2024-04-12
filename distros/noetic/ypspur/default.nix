
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.22.2-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.22.2-1.tar.gz";
    name = "1.22.2-1.tar.gz";
    sha256 = "be1fa7487f451a50cdc77956566bc751736372ce7aa15d75ac527024e505833f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YP-Spur is a mobile robot motion control software with coordinate frame based commands.";
    license = with lib.licenses; [ mit ];
  };
}
