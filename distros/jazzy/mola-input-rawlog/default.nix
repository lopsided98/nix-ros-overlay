
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-obs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-rawlog";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_rawlog/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "6b35683d4ad9643158656dc063e718164ecffbec49c198c50e15b5767e3b8ece";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
