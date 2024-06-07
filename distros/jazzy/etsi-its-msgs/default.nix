
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-msgs, etsi-its-cam-ts-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "8155faf8dcf968116712c5718b3652e0e041601119045e6cdb4c82fd5722f027";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cam-ts-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}