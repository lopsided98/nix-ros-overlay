
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-robosense-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-decoders";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_decoders/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "e7450c6cb82d6b5e507a3ac75a61b6fb7854cdc935a99186e8c4a22a150c945b";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-decoders nebula-robosense-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Robosense Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
