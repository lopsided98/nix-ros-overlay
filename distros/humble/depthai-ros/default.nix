
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-filters, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros";
  version = "2.10.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai-ros/2.10.4-1.tar.gz";
    name = "2.10.4-1.tar.gz";
    sha256 = "8b364b7a578a298cca74b4993816bb01856d12d21693e8e5fca1e2a3517ad38f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-descriptions depthai-examples depthai-filters depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai-ros package";
    license = with lib.licenses; [ mit ];
  };
}
