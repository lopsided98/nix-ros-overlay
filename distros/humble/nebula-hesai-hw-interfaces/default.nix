
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-hw-interfaces, nebula-hesai-common }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "79d1fd388d8cf73898bda9cddb924e1c147ef41ce1544168c1325b1244a051ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-hw-interfaces nebula-hesai-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Hesai";
    license = with lib.licenses; [ asl20 ];
  };
}
