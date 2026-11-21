
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, continental-msgs, diagnostic-msgs, nebula-continental-common, nebula-core-common, nebula-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-decoders";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_decoders/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "7523947c93d04d1cafa945e130c6ff36c22cf4535f767e64ea811124bcd7e9d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost continental-msgs diagnostic-msgs nebula-continental-common nebula-core-common nebula-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Continental Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
