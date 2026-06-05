
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, continental-msgs, diagnostic-msgs, nebula-continental-common, nebula-core-common, nebula-msgs, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-decoders";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_decoders/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "03afc978691202d9783f038b8bc6379de89ce428490c63bd393c1f7e17e55ff1";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost continental-msgs diagnostic-msgs nebula-continental-common nebula-core-common nebula-msgs rclcpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Continental Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
