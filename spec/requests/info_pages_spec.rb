require 'spec_helper'

describe "Info Pages" do
  subject { page }

  shared_examples_for "all info pages" do
    it { should have_content(content)}
    it { should have_title(page_title)}
  end

  describe "Home page" do
    before { visit root_path }
    let(:content)     { 'Bongko' }
    let(:page_title)  { 'Bongko' }

    it_should_behave_like "all info pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:content)     { 'Bongko' }
    let(:page_title)  { 'Bongko' }

    it_should_behave_like "all info pages"
  end

  describe "Contact page" do 
    before { visit contact_path }
    let(:content)     { 'Contact' }
    let(:page_title)  { 'Bongko' }

    it_should_behave_like "all info pages"    
  end
end

