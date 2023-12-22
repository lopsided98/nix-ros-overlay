
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-msgs, etsi-its-denm-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b46cbeaa564d50c07eaf6dcb5573e5a9a93dc778a7f1ef99ec96c3bd497ead38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-denm-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages and helper access functions for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
