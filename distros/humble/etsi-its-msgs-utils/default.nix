
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-msgs-utils";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_msgs_utils/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "31650c8e148315444985a5a2372fb0f1e5b06cb4f2ae0b72bb395ea55ab5fe0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
