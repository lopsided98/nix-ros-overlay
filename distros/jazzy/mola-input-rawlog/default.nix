
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-rawlog";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_rawlog/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "216dbecdca2d9e5fa4794aa9cdf0e7806518884484575338d6b1db93ee2417e1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
