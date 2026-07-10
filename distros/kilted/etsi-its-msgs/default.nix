
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-msgs, etsi-its-cam-ts-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-denm-ts-msgs, etsi-its-ivim-ts-msgs, etsi-its-mapem-ts-msgs, etsi-its-spatem-ts-msgs, etsi-its-vam-ts-msgs }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-msgs";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_msgs/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "9aa232ed02af4d628a6509042d464482332841dc94d477411a8cef3167e597a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cam-ts-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-denm-ts-msgs etsi-its-ivim-ts-msgs etsi-its-mapem-ts-msgs etsi-its-spatem-ts-msgs etsi-its-vam-ts-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
